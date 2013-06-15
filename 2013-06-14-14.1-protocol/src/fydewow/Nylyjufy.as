package fydewow
{
   import mukyrosu.Qanyduk;
   import mukyrosu.Depa;


   public class Nylyjufy extends Qanyduk
   {
      public function Nylyjufy(... rest) {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.data=[];
         super(rest);
         return;
      }

      private var data:Array;

      private var log:Boolean = true;

      override public function dispatch(... rest) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         if(this.log)
         {
            this.data.push(rest);
         }
         super.dispatch.apply(this,rest);
         return;
      }

      override public function add(param1:Function) : Depa {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc2_:Depa = super.add(param1);
         while(this.data.length>0)
         {
            param1.apply(this,this.data.shift());
         }
         this.log=false;
         return _loc2_;
      }

      override public function addOnce(param1:Function) : Depa {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc2_:Depa = null;
         if(this.data.length>0)
         {
            param1.apply(this,this.data.shift());
         }
         else
         {
            _loc2_=super.addOnce(param1);
            this.log=false;
         }
         while(this.data.length>0)
         {
            this.data.shift();
         }
         return _loc2_;
      }

      public function lyp() : int {
         return this.data.length;
      }
   }

}