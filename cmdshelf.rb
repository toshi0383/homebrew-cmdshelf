class Cmdshelf < Formula
  desc "Manage your scripts like a bookshelf.📚"
  homepage "https://github.com/toshi0383/cmdshelf"
  url "https://github.com/toshi0383/cmdshelf.git", :using => :git, :tag => "0.2.1"
  head "https://github.com/toshi0383/cmdshelf.git"

  def install
	system('curl -sL "https://raw.githubusercontent.com/toshi0383/scripts/master/swiftpm/install.sh" > a')
	system('bash a toshi0383/cmdshelf')
	system('rm a')
  end

  test do
    system "cmdshelf", "--version"
  end
end
