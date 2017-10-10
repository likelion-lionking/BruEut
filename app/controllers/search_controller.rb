class SearchController < ApplicationController
  before_action :user_name_done
    def index
        term = params[:term].strip
        term = term.gsub("  ", " ").gsub(" ", "%")

        search_party = Partypost.where("article LIKE ?", "%#{term}%")
<<<<<<< HEAD
        partycomment = Partycomment.where("content LIKE ?" , "%#{term}%")
=======
        party_user = Partypost.where("user LIKE ?" , "%#{term}%")
        partycomment = Partycomment.where("content LIKE ?" , "%#{term}%")
        partycomment_user = Partycomment.where("user LIKE ?" , "%#{term}%")
        partylike = Partylike.where("user LIKE ?" , "%#{term}%")
        partyjoin = Partyjoin.where("user LIKE ?" , "%#{term}%")

        @party = party + party_user + partycomment + partycomment_user + partylike + partycomment
        @partys = search_party
        @partys = @partys.uniq
        @partys = @partys.flatten





        search_title = Pointless.where("title LIKE ?", "%#{term}%")
        search_content = Pointless.where("content LIKE ?" , "%#{term}%")


        @pointless = search_title + search_content
                @pointless = @pointless.uniq

                @pointless = @pointless.flatten
>>>>>>> 2a0e06187881d38c67af09d6e9bb3082c9e2aece


        @partyposts = search_party + partycomment
        @partyposts = @partyposts.uniq
        @partyposts = @partyposts.flatten

    end
end
