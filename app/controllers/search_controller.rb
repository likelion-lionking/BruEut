class SearchController < ApplicationController
  before_action :user_name_done
    def index
        term = params[:term].strip
        term = term.gsub("  ", " ").gsub(" ", "%")

        party = Partypost.where("article LIKE ?", "%#{term}%")
        partycomment = Partycomment.where("content LIKE ?" , "%#{term}%")
        party_user = Partypost.where("user LIKE ?" , "%#{term}%")
        partycomment = Partycomment.where("content LIKE ?" , "%#{term}%")
        partycomment_user = Partycomment.where("user LIKE ?" , "%#{term}%")
        partylike = Partylike.where("user LIKE ?" , "%#{term}%")
        partyjoin = Partyjoin.where("user LIKE ?" , "%#{term}%")

        @partys = party + party_user + partycomment + partycomment_user + partylike + partycomment
        @partys = @partys.uniq
        @partys = @partys.flatten

        search_title = Pointless.where("title LIKE ?", "%#{term}%")
        search_content = Pointless.where("content LIKE ?" , "%#{term}%")



        point_title = Pointless.where("content TITLE ?" , "%#{term}%")

        point_content = Pointless.where("content LIKE ?" , "%#{term}%")

        @pointless = point_title + point_content
        @pointless = @pointless.uniq

        @pointless = @pointless.flatten


    end
end
