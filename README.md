# OpenId::ActiveRecord::Store

Gemified copy of [ruby-openid ActiveRecord example](https://github.com/openid/ruby-openid/tree/master/examples/active_record_openid_store). 

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'openid-activerecord-store'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install openid-activerecord-store

## Usage

Add a migration:

```ruby
class CreateOpenIdTables < ActiveRecord::Migration
  def up
    create_table "open_id_associations" do |t|
      t.column "server_url", :string, :null => false
      t.column "handle", :string, :null => false
      t.column "secret", :binary, :null => false
      t.column "issued", :integer, :null => false
      t.column "lifetime", :integer, :null => false
      t.column "assoc_type", :string, :null => false
    end

    create_table "open_id_nonces" do |t|
      t.column :server_url, :string, :null => false
      t.column :timestamp, :integer, :null => false
      t.column :salt, :string, :null => false
    end
  end

  def down
    drop_table "open_id_associations"
    drop_table "open_id_nonces"
  end
end
```

Instantiate a new store:

```ruby
store = OpenId::ActiveRecord::Store::Interface.new()
```

Here's an example configuration for Devise using omniauth, replacing the default FileStore:

```ruby
  require 'openid-activerecord-store'
  config.omniauth(:open_id,
    :store => OpenId::ActiveRecord::Store::Interface.new,
    :name => 'intuit',
    :identifier => 'https://openid.intuit.com/openid/xrds',
    :require => 'omniauth-openid'
  )
```

## Contributing

1. Fork it ( https://github.com/TheNeatCompany/openid-activerecord-store/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
