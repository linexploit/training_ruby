require_relative '../lib/caesar_cipher'

describe "the caesar_cipher method with different keys and mixed case" do
 it "should shift letters by 1 with mixed case" do
    expect(caesar_cipher("Hello World", 1)).to eq("Ifmmp Xpsme")
 end

 it "should shift letters by 2 with mixed case" do
    expect(caesar_cipher("Hello World", 2)).to eq("Jgnna Yqtnf")
 end

 it "should shift letters by 4 with mixed case" do
    expect(caesar_cipher("Hello World", 4)).to eq("Lipps Zvvwl")
 end

 it "should shift letters by -1 with mixed case" do
    expect(caesar_cipher("Gdkko Uyxmr", 1)).to eq("Hello World")
 end

 it "should shift letters by -2 with mixed case" do
    expect(caesar_cipher("Fckjn Txwlq", 2)).to eq("Hello World")
 end

 it "should shift letters by -4 with mixed case" do
    expect(caesar_cipher("Hello World", -4)).to eq("Ebihm Swhvo")
    expect(caesar_cipher("Ebihm Swhvo", 4)).to eq("Hello World")
 end
end
