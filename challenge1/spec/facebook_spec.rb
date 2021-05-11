# Test cases:
# check if method is defined
# empty array must return no one likes this
# if single user likes the post must return single user name like this
# if two users like the post must return 2 users like this, with last user name first
# if more than two users like the post, must receive 2 users and the remaining user count likes this


require_relative "facebook.rb"

describe "it should test for facebook likes on a post" do
    it "check if facebook_likes is defined" do
        expect(defined? facebook_likes).to eql("method")
    end
    it "have the correct grammar for no one liking it" do
        actual = facebook_likes([])
        expect(actual).to eql("No one likes this")
    end
    it "have the correct grammar for oe person liking it" do
        actual = facebook_likes(["Alex"])
        expect(actual).to eql("Alex likes this")
    end
    it "have the correct grammar for oe person liking it" do
        actual = facebook_likes(["Alex","Nandini"])
        expect(actual).to eql("Nandini and Alex like this")
    end
    it "have the correct grammar for oe person liking it" do
        actual = facebook_likes(["Alex","Nandini","Rory","Ana","Malan"])
        expect(actual).to eql("Malan, Ana and 3 others like this")
    end
end