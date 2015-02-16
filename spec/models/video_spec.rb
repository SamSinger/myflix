require 'spec_helper'

describe Video do 
	
	# it "belongs to category" do
	# 	dramas = Category.create(name: "dramas")
	# 	monk = Video.create(title: "Monk", description: "my monk", category: dramas)
	# 	expect(monk.category).to eq(dramas)
	# end

	it { should belong_to(:category)}
 	it { should validate_presence_of(:title)}
 	it { should validate_presence_of(:description)}
end