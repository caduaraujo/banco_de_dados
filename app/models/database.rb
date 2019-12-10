class Database
  def self.find(id)
    results = ActiveRecord::Base.connection.execute("SELECT * FROM #{self::TABLENAME} where id = #{id}").first
    self.new(results)
  end

  def self.where(options = {})
    sql = "SELECT * FROM #{self::TABLENAME}"

    if options.present?
      sql+= " WHERE "
      sql+= options.map  do |(k, v)|
        if v.is_a?(String)
          "#{k}='#{v}'"
        else
          "#{k}=#{v}"
        end
      end.join(' ')
    end

    results = ActiveRecord::Base.connection.execute(sql).to_a
    results.map { |result| self.new(result) }
  end

  def self.find_by(options = {})
    sql = "SELECT * FROM #{self::TABLENAME}"

    if options.present?
      sql+= " WHERE "
      sql+= options.map do |(k, v)|
        if v.is_a?(String)
          "#{k}='#{v}'"
        else
          "#{k}=#{v}"
        end
      end.join(' ')
    end

    result = ActiveRecord::Base.connection.execute(sql).first
    self.new(result)
  end

  def self.create(options = {})
    options.merge!(
      created_at: Time.now,
      updated_at: Time.now
    )

    attributes = options.keys
    values = options.values.map do |value|
      if value.is_a?(String) || value.is_a?(Time)
        "'#{value}'"
      else
        value
      end
    end.join(', ')
    sql = "INSERT INTO #{self::TABLENAME} (#{attributes.join(', ')}) VALUES (#{values})"
    !!ActiveRecord::Base.connection.execute(sql)
  end

  def update(options = {})
    values = options.map do |(k, value)|
      if value.is_a?(String) || value.is_a?(Time)
        "#{k}='#{value}'"
      else
        "#{k}=#{value}"
      end
    end.join(', ')
    sql = "UPDATE #{self.class::TABLENAME} SET #{values}"
    !!ActiveRecord::Base.connection.execute(sql)
  end
end

#results = { name: 'artur', email: 'artur.prado@gmail.com', message: 'teste' }
