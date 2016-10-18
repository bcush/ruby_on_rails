require 'rails_helper'
RSpec.describe Number do
  it "is called the number One" do
    expect(Number.value).eq to(1);
  end
end
