<<<<<<< HEAD
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

class JournalDetail < ActiveRecord::Base
  belongs_to :journal
  before_save :normalize_values

  def custom_field
    if property == 'cf'
      @custom_field ||= CustomField.find_by_id(prop_key)
    end
  end

  private

  def normalize_values
    self.value = normalize(value)
    self.old_value = normalize(old_value)
  end

  def normalize(v)
    case v
    when true
      "1"
    when false
      "0"
    when Date
      v.strftime("%Y-%m-%d")
    else
      v
    end
  end
end
=======
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

class JournalDetail < ActiveRecord::Base
  belongs_to :journal
  before_save :normalize_values

  def custom_field
    if property == 'cf'
      @custom_field ||= CustomField.find_by_id(prop_key)
    end
  end

  private

  def normalize_values
    self.value = normalize(value)
    self.old_value = normalize(old_value)
  end

  def normalize(v)
    case v
    when true
      "1"
    when false
      "0"
    when Date
      v.strftime("%Y-%m-%d")
    else
      v
    end
  end
end
>>>>>>> 3817f1e30455f4df5135af5f608f1a3912fcf4ff
