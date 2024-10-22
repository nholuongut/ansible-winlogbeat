control 'winlogbeat-test' do
  impact 0.9
  title 'Teste winlogbeat'

  describe chocolatey_package('winlogbeat') do
    it { should be_installed }
  end

  # http://inspec.io/docs/reference/resources/service/
  describe service('winlogbeat') do
    it { should be_enabled }
    it { should be_installed }
    it { should be_running }
  end
end
