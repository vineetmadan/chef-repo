[33mcommit 3aaa1ec6c1afeeecc2047beafcc6eacfa0b3f202[m
Author: Vineet Madan <vineetmadan89@gmail.com>
Date:   Tue Oct 13 15:37:11 2015 +0530

    adding chef repo

[1mdiff --git a/.chef/knife.rb b/.chef/knife.rb[m
[1mnew file mode 100644[m
[1mindex 0000000..43e6dcd[m
[1m--- /dev/null[m
[1m+++ b/.chef/knife.rb[m
[36m@@ -0,0 +1,11 @@[m
[32m+[m[32m# See https://docs.chef.io/config_rb_knife.html for more information on knife configuration options[m
[32m+[m
[32m+[m[32mcurrent_dir = File.dirname(__FILE__)[m
[32m+[m[32mlog_level                :info[m
[32m+[m[32mlog_location             STDOUT[m
[32m+[m[32mnode_name                "vineetmadan"[m
[32m+[m[32mclient_key               "#{current_dir}/vineetmadan.pem"[m
[32m+[m[32mvalidation_client_name   "vineetmadan-validator"[m
[32m+[m[32mvalidation_key           "#{current_dir}/vineetmadan-validator.pem"[m
[32m+[m[32mchef_server_url          "https://api.opscode.com/organizations/vineetmadan"[m
[32m+[m[32mcookbook_path            ["#{current_dir}/../cookbooks"][m
[1mdiff --git a/.gitignore b/.gitignore[m
[1mnew file mode 100644[m
[1mindex 0000000..b0d195c[m
[1m--- /dev/null[m
[1m+++ b/.gitignore[m
[36m@@ -0,0 +1,52 @@[m
[32m+[m[32m# Chef[m
[32m+[m[32m.chef/*.pem[m
[32m+[m[32m.chef/encrypted_data_bag_secret[m
[32m+[m
[32m+[m[32m# Ruby[m
[32m+[m[32m.rake_test_cache[m
[32m+[m[32m.rvmrc[m
[32m+[m[32m.rbenv-version[m
[32m+[m
[32m+[m[32m# Emacs[m
[32m+[m[32m*~[m
[32m+[m[32m\#*\#[m
[32m+[m[32m/.emacs.desktop[m
[32m+[m[32m/.emacs.desktop.lock[m
[32m+[m[32m.elc[m
[32m+[m[32mauto-save-list[m
[32m+[m[32mtramp[m
[32m+[m[32m.\#*[m
[32m+[m
[32m+[m[32m# Emacs org-mode[m
[32m+[m[32m.org-id-locations[m
[32m+[m[32m*_archive[m
[32m+[m
[32m+[m[32m# SublimeText[m
[32m+[m[32m*.sublime-workspace[m
[32m+[m
[32m+[m[32m# TextMate[m
[32m+[m[32m*.tmproj[m
[32m+[m[32m*.tmproject[m
[32m+[m[32mtmtags[m
[32m+[m
[32m+[m[32m# Vim[m
[32m+[m[32m.*.s[a-w][a-z][m
[32m+[m[32m*.un~[m
[32m+[m[32mSession.vim[m
[32m+[m[32m.netrwhist[m
[32m+[m[32m*~[m
[32m+[m
[32m+[m[32m# OS X[m
[32m+[m[32m.DS_Store[m
[32m+[m[32m.AppleDouble[m
[32m+[m[32m.LSOverride[m
[32m+[m[32mIcon[m
[32m+[m[32m._*[m
[32m+[m[32m.Spotlight-V100[m
[32m+[m[32m.Trashes[m
[32m+[m
[32m+[m[32m# Windows[m
[32m+[m[32mThumbs.db[m
[32m+[m[32mehthumbs.db[m
[32m+[m[32mDesktop.ini[m
[32m+[m[32m$RECYCLE.BIN/[m
[1mdiff --git a/.svn/entries b/.svn/entries[m
[1mnew file mode 100644[m
[1mindex 0000000..48082f7[m
[1m--- /dev/null[m
[1m+++ b/.svn/entries[m
[36m@@ -0,0 +1 @@[m
[32m+[m[32m12[m
[1mdiff --git a/.svn/format b/.svn/format[m
[1mnew file mode 100644[m
[1mindex 0000000..48082f7[m
[1m--- /dev/null[m
[1m+++ b/.svn/format[m
[36m@@ -0,0 +1 @@[m
[32m+[m[32m12[m
[1mdiff --git a/.svn/pristine/01/01065842ed5b1d5fb2222fa513435c10754da6ec.svn-base b/.svn/pristine/01/01065842ed5b1d5fb2222fa513435c10754da6ec.svn-base[m
[1mnew file mode 100644[m
[1mindex 0000000..0cf6b28[m
[1m--- /dev/null[m
[1m+++ b/.svn/pristine/01/01065842ed5b1d5fb2222fa513435c10754da6ec.svn-base[m
[36m@@ -0,0 +1,21 @@[m
[32m+[m[32m#[m
[32m+[m[32m# Cookbook Name:: apache[m
[32m+[m[32m# Recipe:: default[m
[32m+[m[32m#[m
[32m+[m[32m# Copyright 2015, YOUR_COMPANY_NAME[m
[32m+[m[32m#[m
[32m+[m[32m# All rights reserved - Do Not Redistribute[m
[32m+[m[32m#[m
[32m+[m
[32m+[m[32mpackage node["package_name"] do[m
[32m+[m	[32maction :install[m
[32m+[m[32mend[m
[32m+[m
[32m+[m[32mservice node["service_name"] do[m
[32m+[m	[32maction [:enable, :start][m
[32m+[m[32mend[m
[32m+[m
[32m+[m[32mtemplate "#{node["document_root"]}/index.html" do[m
[32m+[m	[32msource "index.html.erb"[m
[32m+[m	[32mmode "0644"[m
[32m+[m[32mend[m
\ No newline at end of file[m
[1mdiff --git a/.svn/pristine/0b/0b8ec2852abfd21891cb69e37d3120fe69aed57d.svn-base b/.svn/pristine/0b/0b8ec2852abfd21891cb69e37d3120fe69aed57d.svn-base[m
[1mnew file mode 100644[m
[1mindex 0000000..c9d4d2e[m
[1m--- /dev/null[m
[1m+++ b/.svn/pristine/0b/0b8ec2852abfd21891cb69e37d3120fe69aed57d.svn-base[m
[36m@@ -0,0 +1,7 @@[m
[32m+[m[32mname             'apache'[m
[32m+[m[32mmaintainer       'YOUR_COMPANY_NAME'[m
[32m+[m[32mmaintainer_email 'YOUR_EMAIL'[m
[32m+[m[32mlicense          'All rights reserved'[m
[32m+[m[32mdescription      'Installs/Configures apache'[m
[32m+[m[32mlong_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))[m
[32m+[m[32mversion          '0.1.0'[m
[1mdiff --git a/.svn/pristine/14/14d341f24ef8d32fed70d0edb8dbeefcb2b5cc8f.svn-base b/.svn/pristine/14/14d341f24ef8d32fed70d0edb8dbeefcb2b5cc8f.svn-base[m
[1mnew file mode 100644[m
[1mindex 0000000..43e6dcd[m
[1m--- /dev/null[m
[1m+++ b/.svn/pristine/14/14d341f24ef8d32fed70d0edb8dbeefcb2b5cc8f.svn-base[m
[36m@@ -0,0 +1,11 @@[m
[32m+[m[32m# See https://docs.chef.io/config_rb_knife.html for more information on knife configuration options[m
[32m+[m
[32m+[m[32mcurrent_dir = File.dirname(__FILE__)[m
[32m+[m[32mlog_level                :info[m
[32m+[m[32mlog_location             STDOUT[m
[32m+[m[32mnode_name                "vineetmadan"[m
[32m+[m[32mclient_key               "#{current_dir}/vineetmadan.pem"[m
[32m+[m[32mvalidation_client_name   "vineetmadan-validator"[m
[32m+[m[32mvalidation_key           "#{current_dir}/vineetmadan-validator.pem"[m
[32m+[m[32mchef_server_url          "https://api.opscode.com/organizations/vineetmadan"[m
[32m+[m[32mcookbook_path            ["#{current_dir}/../cookbooks"][m
[1mdiff --git a/.svn/pristine/1b/1b3a7ce438b4d04a37206f978e41cda93b60b4a3.svn-base b/.svn/pristine/1b/1b3a7ce438b4d04a37206f978e41cda93b60b4a3.svn-base[m
[1mnew file mode 100644[m
[1mindex 0000000..b0d195c[m
[1m--- /dev/null[m
[1m+++ b/.svn/pristine/1b/1b3a7ce438b4d04a37206f978e41cda93b60b4a3.svn-base[m
[36m@@ -0,0 +1,52 @@[m
[32m+[m[32m# Chef[m
[32m+[m[32m.chef/*.pem[m
[32m+[m[32m.chef/encrypted_data_bag_secret[m
[32m+[m
[32m+[m[32m# Ruby[m
[32m+[m[32m.rake_test_cache[m
[32m+[m[32m.rvmrc[m
[32m+[m[32m.rbenv-version[m
[32m+[m
[32m+[m[32m# Emacs[m
[32m+[m[32m*~[m
[32m+[m[32m\#*\#[m
[32m+[m[32m/.emacs.desktop[m
[32m+[m[32m/.emacs.desktop.lock[m
[32m+[m[32m.elc[m
[32m+[m[32mauto-save-list[m
[32m+[m[32mtramp[m
[32m+[m[32m.\#*[m
[32m+[m
[32m+[m[32m# Emacs org-mode[m
[32m+[m[32m.org-id-locations[m
[32m+[m[32m*_archive[m
[32m+[m
[32m+[m[32m# SublimeText[m
[32m+[m[32m*.sublime-workspace[m
[32m+[m
[32m+[m[32m# TextMate[m
[32m+[m[32m*.tmproj[m
[32m+[m[32m*.tmproject[m
[32m+[m[32mtmtags[m
[32m+[m
[32m+[m[32m# Vim[m
[32m+[m[32m.*.s[a-w][a-z][m
[32m+[m[32m*.un~[m
[32m+[m[32mSession.vim[m
[32m+[m[32m.netrwhist[m
[32m+[m[32m*~[m
[32m+[m
[32m+[m[32m# OS X[m
[32m+[m[32m.DS_Store[m
[32m+[m[32m.AppleDouble[m
[32m+[m[32m.LSOverride[m
[32m+[m[32mIcon[m
[32m+[m[32m._*[m
[32m+[m[32m.Spotlight-V100[m
[32m+[m[32m.Trashes[m
[32m+[m
[32m+[m[32m# Windows[m
[32m+[m[32mThumbs.db[m
[32m+[m[32mehthumbs.db[m
[32m+[m[32mDesktop.ini[m
[32m+[m[32m$RECYCLE.BIN/[m
[1mdiff --git a/.svn/pristine/27/2757d606a477e61cb644e4c3a53ce7dbf94e720c.svn-base b/.svn/pristine/27/2757d606a477e61cb644e4c3a53ce7dbf94e720c.svn-base[m
[1mnew file mode 100644[m
[1mindex 0000000..e780f10[m
[1m--- /dev/null[m
[1m+++ b/.svn/pristine/27/2757d606a477e61cb644e4c3a53ce7dbf94e720c.svn-base[m
[36m@@ -0,0 +1,13 @@[m
[32m+[m[32mapache CHANGELOG[m
[32m+[m[32m================[m
[32m+[m
[32m+[m[32mThis file is used to list changes made in each version of the apache cookbook.[m
[32m+[m
[32m+[m[32m0.1.0[m
[32m+[m[32m-----[m
[32m+[m[32m- [your_name] - Initial release of apache[m
[32m+[m
[32m+[m[32m- - -[m
[32m+[m[32mCheck the [Markdown Syntax Guide](http://daringfireball.net/pr