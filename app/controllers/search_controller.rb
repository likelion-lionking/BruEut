class SearchController < ApplicationController
  before_action :user_name_done
    def index
        term = params[:term].strip
        term = term.gsub("  ", " ").gsub(" ", "%")

        search_party = Partypost.where("article LIKE ?", "%#{term}%")
        partycomment = Partycomment.where("content LIKE ?" , "%#{term}%")


        @partyposts = search_party + partycomment
        @partyposts = @partyposts.uniq
        @partyposts = @partyposts.flatten

    end
end
