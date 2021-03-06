class HomeController < ProtectedController
  
  before_filter :get_member

  def index
  	@completed_todos = @member.todos.completed
  	@incompleted_todos = @member.todos.incompleted
  end

  def stats
   @stats =  @member.current_stats
  end

  def history
   @history  =  @member.histories
  end

  def about
  end

  def get_member
  	@member = Member.find(session[:member][:id])
  end
end
