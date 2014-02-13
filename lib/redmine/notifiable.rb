<<<<<<< HEAD
module Redmine
  class Notifiable < Struct.new(:name, :parent)

    def to_s
      name
    end

    # TODO: Plugin API for adding a new notification?
    def self.all
      notifications = []
      notifications << Notifiable.new('issue_added')
      notifications << Notifiable.new('issue_updated')
      notifications << Notifiable.new('issue_note_added', 'issue_updated')
      notifications << Notifiable.new('issue_status_updated', 'issue_updated')
      notifications << Notifiable.new('issue_priority_updated', 'issue_updated')
      notifications << Notifiable.new('news_added')
      notifications << Notifiable.new('news_comment_added')
      notifications << Notifiable.new('document_added')
      notifications << Notifiable.new('file_added')
      notifications << Notifiable.new('message_posted')
      notifications << Notifiable.new('wiki_content_added')
      notifications << Notifiable.new('wiki_content_updated')
      notifications
    end
  end
end
=======
module Redmine
  class Notifiable < Struct.new(:name, :parent)

    def to_s
      name
    end

    # TODO: Plugin API for adding a new notification?
    def self.all
      notifications = []
      notifications << Notifiable.new('issue_added')
      notifications << Notifiable.new('issue_updated')
      notifications << Notifiable.new('issue_note_added', 'issue_updated')
      notifications << Notifiable.new('issue_status_updated', 'issue_updated')
      notifications << Notifiable.new('issue_priority_updated', 'issue_updated')
      notifications << Notifiable.new('news_added')
      notifications << Notifiable.new('news_comment_added')
      notifications << Notifiable.new('document_added')
      notifications << Notifiable.new('file_added')
      notifications << Notifiable.new('message_posted')
      notifications << Notifiable.new('wiki_content_added')
      notifications << Notifiable.new('wiki_content_updated')
      notifications
    end
  end
end
>>>>>>> 3817f1e30455f4df5135af5f608f1a3912fcf4ff
