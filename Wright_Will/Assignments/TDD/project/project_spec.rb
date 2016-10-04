require_relative 'project'

RSpec.describe Project do
    it 'has a great setter for name attribute' do
        project = Project.new("name","description")
        project.name = 'changed_name'

        expect(project.name).to eq('changed_name')
    end
    it 'has add_to_team method that works' do
        project = Project.new('name','description')
        project.add_to_team('fred')
        expect(project.team.last).to eq('fred')
    end
end
