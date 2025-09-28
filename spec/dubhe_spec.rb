# frozen_string_literal: true

RSpec.describe Dubhe do
  it "has a version number" do
    expect(Dubhe::VERSION).not_to be nil
  end

  it "returns 0 B for zero" do
    expect(Dubhe.convert(0)).to eq("0 B")
  end

  it "converts bytes to human readable" do
    expect(Dubhe.convert(1024)).to eq("1.0 KB")
  end
end
