回调简介  
  回调是在对象生命周期的特定时刻执行的方法 ，回调方法可以在 ActiveRecord 对象创建 、保存、 更新、 删除、 验证、 或从数据库中独处时执行

  在使用回调之前  ，要先注册 ，回调方法定义和普通方法一样，然后使用类方法定义

  class User <ActiveRecord::Base
    validates :login, :email, presence: true;

    before_validation :ensure_login_has_a_value



    protected
    def ensure_login_has_a_value
      if login.nil?
        self.login = email unless email.blank?
          
        end
    end
  end


  这类方法还可以接受一个代码块   如果操作可以使用一行代码表述

  class User < ActiveRecord::Base
    validates :login, :email,presence: true

    before_create do 
      self.name = login.capitalize if name.blank?
    end
  end


  注册回调时可以指定只对对象生命周期的特定事件发生执行

  class User < ActiveRecord::Base
    before_validation :normalize_name, on: :create

    after_validation :set_location, on: [ :create, :update ]

    protected
      def normalize_name
        self.name = self.name.downcase.titleize
      end

      def set_location
        self.location = locationService.query(self)

      end
  end

  