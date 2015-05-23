# -*- encoding: utf-8 -*-
# stub: flog 4.2.1 ruby lib

Gem::Specification.new do |s|
  s.name = "flog"
  s.version = "4.2.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["Ryan Davis"]
  s.cert_chain = ["-----BEGIN CERTIFICATE-----\nMIIDPjCCAiagAwIBAgIBATANBgkqhkiG9w0BAQUFADBFMRMwEQYDVQQDDApyeWFu\nZC1ydWJ5MRkwFwYKCZImiZPyLGQBGRYJemVuc3BpZGVyMRMwEQYKCZImiZPyLGQB\nGRYDY29tMB4XDTEzMDkxNjIzMDQxMloXDTE0MDkxNjIzMDQxMlowRTETMBEGA1UE\nAwwKcnlhbmQtcnVieTEZMBcGCgmSJomT8ixkARkWCXplbnNwaWRlcjETMBEGCgmS\nJomT8ixkARkWA2NvbTCCASIwDQYJKoZIhvcNAQEBBQADggEPADCCAQoCggEBALda\nb9DCgK+627gPJkB6XfjZ1itoOQvpqH1EXScSaba9/S2VF22VYQbXU1xQXL/WzCkx\ntaCPaLmfYIaFcHHCSY4hYDJijRQkLxPeB3xbOfzfLoBDbjvx5JxgJxUjmGa7xhcT\noOvjtt5P8+GSK9zLzxQP0gVLS/D0FmoE44XuDr3iQkVS2ujU5zZL84mMNqNB1znh\nGiadM9GHRaDiaxuX0cIUBj19T01mVE2iymf9I6bEsiayK/n6QujtyCbTWsAS9Rqt\nqhtV7HJxNKuPj/JFH0D2cswvzznE/a5FOYO68g+YCuFi5L8wZuuM8zzdwjrWHqSV\ngBEfoTEGr7Zii72cx+sCAwEAAaM5MDcwCQYDVR0TBAIwADALBgNVHQ8EBAMCBLAw\nHQYDVR0OBBYEFEfFe9md/r/tj/Wmwpy+MI8d9k/hMA0GCSqGSIb3DQEBBQUAA4IB\nAQCFZ7JTzoy1gcG4d8A6dmOJy7ygtO5MFpRIz8HuKCF5566nOvpy7aHhDDzFmQuu\nFX3zDU6ghx5cQIueDhf2SGOncyBmmJRRYawm3wI0o1MeN6LZJ/3cRaOTjSFy6+S6\nzqDmHBp8fVA2TGJtO0BLNkbGVrBJjh0UPmSoGzWlRhEVnYC33TpDAbNA+u39UrQI\nynwhNN7YbnmSR7+JU2cUjBFv2iPBO+TGuWC+9L2zn3NHjuc6tnmSYipA9y8Hv+As\nY4evBVezr3SjXz08vPqRO5YRdO3zfeMT8gBjRqZjWJGMZ2lD4XNfrs7eky74CyZw\nxx3n58i0lQkBE1EpKE0lFu/y\n-----END CERTIFICATE-----\n"]
  s.date = "2014-05-30"
  s.description = "Flog reports the most tortured code in an easy to read pain\nreport. The higher the score, the more pain the code is in."
  s.email = ["ryand-ruby@zenspider.com"]
  s.executables = ["flog"]
  s.extra_rdoc_files = ["History.txt", "Manifest.txt", "README.txt"]
  s.files = ["History.txt", "Manifest.txt", "README.txt", "bin/flog"]
  s.homepage = "http://ruby.sadi.st/"
  s.licenses = ["MIT"]
  s.rdoc_options = ["--main", "README.txt"]
  s.rubygems_version = "2.4.6"
  s.summary = "Flog reports the most tortured code in an easy to read pain report"

  s.installed_by_version = "2.4.6" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<sexp_processor>, ["~> 4.4"])
      s.add_runtime_dependency(%q<ruby_parser>, ["> 3.1.0", "~> 3.1"])
      s.add_development_dependency(%q<minitest>, ["~> 5.3"])
      s.add_development_dependency(%q<rdoc>, ["~> 4.0"])
      s.add_development_dependency(%q<hoe>, ["~> 3.12"])
    else
      s.add_dependency(%q<sexp_processor>, ["~> 4.4"])
      s.add_dependency(%q<ruby_parser>, ["> 3.1.0", "~> 3.1"])
      s.add_dependency(%q<minitest>, ["~> 5.3"])
      s.add_dependency(%q<rdoc>, ["~> 4.0"])
      s.add_dependency(%q<hoe>, ["~> 3.12"])
    end
  else
    s.add_dependency(%q<sexp_processor>, ["~> 4.4"])
    s.add_dependency(%q<ruby_parser>, ["> 3.1.0", "~> 3.1"])
    s.add_dependency(%q<minitest>, ["~> 5.3"])
    s.add_dependency(%q<rdoc>, ["~> 4.0"])
    s.add_dependency(%q<hoe>, ["~> 3.12"])
  end
end
