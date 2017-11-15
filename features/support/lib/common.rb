module Common

def Common.get_url route
	YAML.load_file("#{TEST_DATA_DIR}/test_data.yml")["url"] [route] 
end
 
 def Common.normal_user route
 	YAML.load_file("#{TEST_DATA_DIR}/test_data.yml")["default_user"] [route] 
end

def Common.man_admin route
	YAML.load_file("#{TEST_DATA_DIR}/test_data.yml")["ad_admin"] [route] 
end

def Common.manage_informatics route
	YAML.load_file("#{TEST_DATA_DIR}/test_data.yml")["informatics"] [route] 
end

def Common.manage_subspeciality route
	YAML.load_file("#{TEST_DATA_DIR}/test_data.yml")["subspeciality"] [route] 
end

def Common.add_helpline route
	YAML.load_file("#{TEST_DATA_DIR}/test_data.yml")["helpline"] [route] 
end

end

