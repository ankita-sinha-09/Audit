# verify that a specific inspec version is installed
describe gem('inspec', :chef) do
  it { should be_installed }
  its('version') { should cmp '1.29.0' }
end

describe gem('inspec-core', :chef) do
  it { should_not be_installed }
end
