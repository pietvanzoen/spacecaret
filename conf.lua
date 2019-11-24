function love.conf(t)
  t.releases = {
    title = 'SpaceCaret',              -- The project title (string)
    package = 'main.lua',            -- The project command and package name (string)
    loveVersion = '11.3',        -- The project LÖVE version
    version = '0.0.0',            -- The project version
    author = 'Piet van Zoen',             -- Your name (string)
    email = 'hi@piet.me',              -- Your email (string)
    description = 'Where no caret has ever gone before',        -- The project description (string)
    homepage = 'https://piet.me',           -- The project homepage (string)
    identifier = 'com.pietvanzoen.spacecaret',         -- The project Uniform Type Identifier (string)
    excludeFileList = {},     -- File patterns to exclude. (string list)
    releaseDirectory = 'releases',   -- Where to store the project releases (string)
  }
end
