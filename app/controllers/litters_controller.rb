class LittersController < ApplicationController
	autocomplete :pig, :ear_notch_number, :extra_data => [:date_of_birth], :full => true, :display_value => :autocorrect_values, scope: [:sex, :removed]
  before_action :authenticate_user!
  
  def create 
		@litter=Litter.new(litter_params)
		if @litter.save
      @litter.pigs.each do |p|
        p.update_column(:breed, params[:breed])
      end
	 		redirect_to litters_path, notice: "Litter successfully created."
		else
      @breeds = ["Large white", "Pure land race", "Chester white",  "CEFN", "Hybrid"]
      @earnotch = Pig.set_ear_notch - Integer(DateTime.now.strftime('%y'))*100000
			render 'new'
  	end
	end

  def get_autocomplete_items(parameters)
    super(parameters).where(:sex => params[:sex], :removed => params[:removed])
  end

  def edit 
    @litter = Litter.find(params[:id])
    @dam = Pig.where(pig_id: @litter.dam_id).first
    @sire = Pig.where(pig_id: @litter.sire_id).first
  end

  def update
    params[:litter][:pigs_attributes].each do |p|
      @pig = Pig.find(Integer(p[1][:id]))
      @pig.update_column(:weaning_weight, p[1][:weaning_weight])
      @pig.update_attribute(:date_weaned, p[1][:date_weaned])
    end

    redirect_to litters_path, notice: "Litter successfully updated."
  end

  def show
    @litter = Litter.find(params[:id])
    @dam = Pig.where(pig_id: @litter.dam_id).first
    @sire = Pig.where(pig_id: @litter.sire_id).first
    respond_to do |format|
      format.html
      format.pdf do
        render pdf: "litter",   # Excluding ".pdf" extension.
          layout: 'pdf.html.erb',
          template: 'litters/show.pdf.erb',
          show_as_html: params[:debug].present?,
          margin:  {   top:               5,                     # default 10 (mm)
                    bottom:            5,
                    left:              0,
                    right:             0 }
      end
    end
  end

  def new 
    @litter = Litter.new
    @litter.pigs.build
    @breeds = ["Large white", "Pure land race", "Chester white",  "CEFN", "Hybrid"]
    # select max(ear_notch_number) from pigs where pigs.ear_notch_number like "1604%";
    @earnotch = Pig.set_ear_notch - Integer(DateTime.now.strftime('%y'))*100000
  end

	def index		
		@litters = Litter.all  
	end

	def litter_params
		params.require(:litter).permit(:dam_id, :parity_number, :sire_id, :date_bred, :due_to_farrow, :actual_date_of_farrowing, :mummified_piglets, :stillborn_piglets, :litter_size_at_birth, :breed, pigs_attributes: [:pig_id, :id, :ear_notch_number, :sex, :birth_weight, :weaning_weight, :date_weaned, :_destroy])
	end

end
