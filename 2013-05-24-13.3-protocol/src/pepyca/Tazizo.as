package pepyca
{
   import __AS3__.vec.Vector;


   public class Tazizo extends Object
   {
      public function Tazizo() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.cijulygo=new Vector.<String>();
         super();
         return;
      }

      private var cijulygo:Vector.<String>;

      private var index:int = 0;

      public function push(param1:String) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.cijulygo.push(param1);
         return;
      }

      public function tapu() : String {
         var _loc1_:* = false;
         var _loc2_:* = true;
         if(this.cijulygo.length>0)
         {
            this.index=Math.min(this.index+1,this.cijulygo.length-1);
            return this.cijulygo[this.index];
         }
         return "";
      }

      public function timagulo() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.index=0;
         return;
      }
   }

}