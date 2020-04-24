class PublicController < ApplicationController

    def home
        @categories = Category.where(parent_id: nil)
    end

    def send_enguiry_to_user
        @post = Post.find(params[:post_id])
        
        if @post.present? 
            logger.debug "Message has been sent to user"

            ContactMailer.post_enquiry(@post.id).deliver_now
        end
    end

    def faqs
    end

    def scams
    end

    def safety
    end

    def terms
    end
end

