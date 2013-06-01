package com.google.analytics.data
{
[CLASS1764]

   public interface Cookie
   {
      function fromSharedObject(param1:Object) : void;

      function toURLString() : String;

      function get creation() : Date;

      function toSharedObject() : Object;

      function isExpired() : Boolean;

      function set creation(param1:Date) : void;

      function set expiration(param1:Date) : void;

      function get expiration() : Date;
   }
[/CLASS]
}