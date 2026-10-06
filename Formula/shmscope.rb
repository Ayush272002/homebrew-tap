# Copyright 2026 Ayush Acharjya
# SPDX-License-Identifier: Apache-2.0

class Shmscope < Formula
  desc "Live terminal viewer for POSIX shared memory"
  homepage "https://github.com/Ayush272002/shmscope"
  url "https://github.com/Ayush272002/shmscope/releases/download/v0.1.5/shmscope-v0.1.5-macos-arm64.tar.gz"
  sha256 "31c55a33fdc659b591703e5b2a5a7eaf5213f5a98702b6aedee99706b20814b3"
  license "Apache-2.0"

  livecheck do
    url :stable
    strategy :github_latest
  end

  depends_on arch: :arm64
  depends_on macos: :sonoma

  def install
    bin.install "bin/shmscope"
    pkgshare.install "examples"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/shmscope --version")

    (testpath/"broken.ksy").write <<~YAML
      meta: {id: broken, endian: le}
      seq: [{id: a, type: u3}]
    YAML
    output = shell_output("#{bin}/shmscope --layout #{testpath}/broken.ksy /nothing 2>&1", 1)
    assert_match "broken.ksy:2:", output
  end
end
