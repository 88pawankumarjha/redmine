<<<<<<< HEAD
# encoding: utf-8
#
# Redmine - project management software
# Copyright (C) 2006-2014  Jean-Philippe Lang
#
# This program is free software; you can redistribute it and/or
# modify it under the terms of the GNU General Public License
# as published by the Free Software Foundation; either version 2
# of the License, or (at your option) any later version.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with this program; if not, write to the Free Software
# Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA  02110-1301, USA.

module AdminHelper
  def project_status_options_for_select(selected)
    options_for_select([[l(:label_all), ''],
                        [l(:project_status_active), '1'],
                        [l(:project_status_closed), '5'],
                        [l(:project_status_archived), '9']], selected.to_s)
  end
end
=======
# encoding: utf-8
#
# Redmine - project management software
# Copyright (C) 2006-2014  Jean-Philippe Lang
#
# This program is free software; you can redistribute it and/or
# modify it under the terms of the GNU General Public License
# as published by the Free Software Foundation; either version 2
# of the License, or (at your option) any later version.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with this program; if not, write to the Free Software
# Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA  02110-1301, USA.

module AdminHelper
  def project_status_options_for_select(selected)
    options_for_select([[l(:label_all), ''],
                        [l(:project_status_active), '1'],
                        [l(:project_status_closed), '5'],
                        [l(:project_status_archived), '9']], selected.to_s)
  end
end
>>>>>>> 3817f1e30455f4df5135af5f608f1a3912fcf4ff
