package pumoc
{
   import __AS3__.vec.Vector;


   public class Gigo extends Object
   {
      public function Gigo() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.qyreki=new Vector.<String>();
         super();
         return;
      }

      private var qyreki:Vector.<String>;

      private var index:int = 0;

      public function push(param1:String) : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc2_:int = this.qyreki.indexOf(param1);
         if(_loc2_!=-1)
         {
            this.qyreki.splice(_loc2_,1);
         }
         this.qyreki.unshift(param1);
         return;
      }

      public function bumubat() : String {
         var _loc1_:* = false;
         var _loc2_:* = true;
         if(this.qyreki.length>0)
         {
            this.index=(this.index+1)%this.qyreki.length;
            return this.qyreki[this.index];
         }
         return "";
      }

      public function pegupejo() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.index=-1;
         return;
      }

      public function halyviken() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.qyreki=new Vector.<String>();
         this.index=0;
         return;
      }
   }

}