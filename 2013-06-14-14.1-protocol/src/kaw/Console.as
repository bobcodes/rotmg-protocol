package kaw
{
   import qowema.Sytyze;
   import mukyrosu.Qanyduk;
   import __AS3__.vec.Vector;


   public final class Console extends Object
   {
      public function Console() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         this.hash=new Jomedoku();
         this.history=new Pecomas();
         return;
      }

      private var hash:Jomedoku;

      private var history:Pecomas;

      public function register(param1:Sytyze, param2:Qanyduk) : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         this.hash.register(param1.name,param1.description,param2);
         return;
      }

      public function mucit(param1:String) : Boolean {
         return this.hash.porem(param1);
      }

      public function execute(param1:String) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.history.add(param1);
         this.hash.execute(param1);
         return;
      }

      public function piwabal() : Vector.<String> {
         return this.hash.piwabal();
      }

      public function neme() : String {
         return this.history.ryvy();
      }

      public function jibon() : String {
         return this.history.bumubat();
      }
   }

}