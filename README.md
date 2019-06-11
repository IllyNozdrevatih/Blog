# README

Simple blog on ruby on rails

Models:
-User ( id , email , password )
-Article ( id , name , description , image_file_name , image_content_type , image_file_size	)
-Category ( id , name)

Views:
1. articles - index, add , edit , new , show
2. user - index ( articels created by user ) , 
3. categories - index ( articles related to the category )

Functional
User can sign up to site and create article related to the category if user logged in , also may look to created articles by himself and edit, to change category relatet to article or delate article . Also use authorized and unauthorized can look all acticles created by other users .  