class RefreshController < ApplicationController
  def index
    execute_query = ExecuteRawSql.new
    execute_query.query(params[:action], params[:csv_file_name])

    redirect_to refresh_result_index_url
  end
end
