require_relative 'project'

RSpec.describe Project do
    it 'has a great setter for name attribute' do
        project = Project.new("name","description")
        project.name = 'changed_name'

        expect(project.name).to eq('changed_name')
    end
end
