if defined? ActionDispatch::Http::UploadedFile
  ActionDispatch::Http::UploadedFile.send(:include, Paperclip::Upfile)
end

module Paperclip
  class Attachment
    def save
      flush_deletes unless @options[:keep_old_files]
      flush_writes
      @dirty = false
      true
    end
  end
end
