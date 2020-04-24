class PublicController < ApplicationController

    def home
        @categories = Category.where(parent_id: nil)
    end

    def send_enguiry_to_user
        @post = Post.find(params[:post_id])
        
        if @post.present? 
            ContactMailer.post_enquiry(@post.id, params[:email], params[:message]).deliver_now
            flash[:success] = "Message sent successfully"
        else
            flash[:danger] = "Unable to send message"
        end

        redirect_to post_path(@post)
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

