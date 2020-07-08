class AttachmentsController < ApplicationController
    def create
        @attachment = Attachment.new(attachment_params)
        @attachment.article_id = params[:article_id]
        @attachment.save
        # redirect_to article_path(@comment.article)
    end
end
