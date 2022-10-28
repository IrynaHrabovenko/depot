module EntryCount

  private

  def set_count
    if session[:counter].nil?
      session[:counter] = 0
    end
    @entry_count = session[:counter]
  end
end
