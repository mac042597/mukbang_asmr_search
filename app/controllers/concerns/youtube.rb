module Youtube
  extend ActiveSupport::Concern

  require 'google/apis/youtube_v3'
  def search_movie(keyword)
    youtube = Google::Apis::YoutubeV3::YouTubeService.new
    youtube.key = Rails.application.credentials.google[:api_key]

    next_page_token = nil
    opt = {
      q: keyword,
      type: "video",
      max_results: 21,
      order: :relevance,
      page_token: next_page_token
    }

    youtube.list_searches(:snippet, **opt)
  end
end