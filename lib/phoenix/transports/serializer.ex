defmodule Phoenix.Transports.Serializer do
  @moduledoc false

  @doc "Translates a `Phoenix.Socket.Broadcast` struct to fastlane format"
  @callback fastlane!(Phoenix.Socket.Broadcast.t) :: term

  @doc "Encodes `Phoenix.Socket.Message` struct to transport representation"
  @callback encode!(Phoenix.Socket.Message.t | Phoenix.Socket.Reply.t) :: term

  @doc "Decodes iodata into `Phoenix.Socket.Message` struct"
  @callback decode!(iodata, options :: Keyword.t) :: Phoenix.Socket.Message.t
end
