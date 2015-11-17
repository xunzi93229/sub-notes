class PeopleController < ActionController::Base

  def create 
    Person.create(params[:person])
  end

  def update
    person = current_account.people.find(params[:id])
    person.update!(person_params)
    redirect_to person
  end

  private 
  def person_params
    params.require(:person).permit(:name,:age)
  end
#require 确保参数的存在，返回参数在给定的键 ，否则跑出 一个确保参数的存在。如果它存在，返回参数在给定的键，否则抛出一个ActionController:：parametermissing错误
#permit 返回一个新的ActionController：参数实例只包含了给定的过滤器和设置允许
#真正的对象属性，这是有用的限制 ，应该允许 质量更新的属性
end
