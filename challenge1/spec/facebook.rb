# def facebook_likes(names)
#     likes = 0

#     names.each do |name|
#     likes += 1
#     end

#     if likes == 0
#         "No one likes this"
#     elsif likes ==1
#         "#{names[0]} likes this"
#     elsif likes == 2
#         "#{names[1]} and #{names[0]} like this"
#     elsif likes == 3
#         "#{names[2]}, #{names[1]} and #{names[0]} like this"
#     elsif likes > 3
#         "#{names[-1]}, #{names[-2]} and #{names.length - 2} others like this"
#     end

# end

def facebook_likes(names)
    case names.length
    when 0
        "No one likes this"
    when 1
        "#{names[0]} likes this"
    when 2
        "#{names[1]} and #{names[0]} like this"
    when 3
        "#{names[2]}, #{names[1]} and #{names[0]} like this"
    else
        "#{names[-1]}, #{names[-2]} and #{names.length - 2} others like this"
    end
end

puts facebook_likes(["Alex", "Garret", "Paul", "Aleisha", "Sarah", "Macey"])