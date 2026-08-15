import filepath
import gleeunit
import gleeunit/should

pub fn main() {
  gleeunit.main()
}

pub fn join_test() {
  filepath.join("a", "b") |> should.equal("a/b")
  filepath.join("a/", "/b") |> should.equal("a/b")
}

pub fn base_name_test() {
  filepath.base_name("a/b/c.txt") |> should.equal("c.txt")
  filepath.base_name("c.txt") |> should.equal("c.txt")
}

pub fn directory_name_test() {
  filepath.directory_name("a/b/c.txt") |> should.equal("a/b")
}

pub fn extension_test() {
  filepath.extension("a/b/c.txt") |> should.equal(Ok("txt"))
  filepath.extension("a/b/c") |> should.be_error()
}

pub fn strip_extension_test() {
  filepath.strip_extension("a/b/c.txt") |> should.equal("a/b/c")
}

pub fn split_test() {
  filepath.split("a/b/c") |> should.equal(["a", "b", "c"])
}

pub fn is_absolute_test() {
  should.be_true(filepath.is_absolute("/a/b"))
  should.be_false(filepath.is_absolute("a/b"))
}
