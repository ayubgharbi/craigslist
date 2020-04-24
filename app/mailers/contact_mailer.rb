class ContactMailer < ApplicationMailer 
    
    def post_enquiry post_id 
        @post = Post.find(post_id)

        if @post.present? 
            # send mail to post author 
            mail(to: @post.account.email, subject: "Enquiry about #{@post.name}")
        end
    end
end