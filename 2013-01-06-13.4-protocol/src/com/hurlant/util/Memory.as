package com.hurlant.util
{
[CLASS1739]   import flash.net.LocalConnection;
   import flash.system.System;


   public class Memory extends Object
   {
      public function Memory() {
         super();
         return;
      }

      public static function gc() : void {
         try
         {
            new LocalConnection().connect("foo");
            new LocalConnection().connect("foo");
         }
         catch(e:*)
         {
         }
         return;
      }

      public static function get used() : uint {
         return System.totalMemory;
      }
   }
[/CLASS]
}