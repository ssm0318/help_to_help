json.event_id @event.id
json.event_title @event.title
json.event_description @event.description
json.event_location @event.location
json.event_chatlink @event.chatlink
json.event_hosted @event.hosted
json.event_tag @event.tags do |tag|
    json.event_tag_content tag.content
end
json.host_profile do
    json.host_id @event.host.profile.id
    json.host_name @event.host.profile.name
    json.host_age @event.host.profile.age
    json.host_description @event.host.profile.description
    json.host_tag @event.host.profile.profile_tags do |tag|
        json.host_tag_content tag.content
    end
    json.host_address @event.host.profile.address
    json.profile_longitude @event.host.profile.profile_longitude
    json.profile_latitude @event.host.profile.profile_latitude
    json.profile_pic @event.host.profile.profile_pic
    json.host_isVerified @event.host.profile.isVerified
    json.host_gender @event.host.profile.gender
    json.host_language @event.host.profile.language
    json.host_experience @event.host.profile.exp
    json.host_reviews @event.host.profile.user.received_reviews do |review|
        json.reviewed_by review.author.profile.name
        json.reviewer_profile_pic review.author.profile.profile_pic.to_s
        json.review_rating review.rating
        json.review_content review.content
    end
end