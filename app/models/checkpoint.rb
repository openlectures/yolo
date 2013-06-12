class Checkpoint < ActiveRecord::Base
  #Model Relations
  belongs_to :lesson
  delegate :topic, to: :lesson
  delegate :seab_sub_topic, to: :topic
  delegate :seab_topic, to: :seab_sub_topic
  delegate :subject, to: :seab_topic

  def youtubeID
    @@video_regexp = /[v=|\/]([\w-]+)(&.+)?$/
    youtubeID = @@video_regexp.match(videourl)[1]
    return youtubeID
  end

  def parsed_url
    return "https://www.youtube.com/embed/"+youtubeID+"?rel=0&amp;theme=light&amp;color=white&amp;autoplay=0&amp;showinfo=0&amp;autohide=3&amp;vq=hd720&?enablejsapi=1"
  end

end
