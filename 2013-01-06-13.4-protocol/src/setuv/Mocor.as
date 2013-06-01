package setuv
{
[CLASS1124]   import __AS3__.vec.Vector;


   public class Mocor extends Object
   {
      public function Mocor() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.tonilije=new Vector.<String>();
         super();
         return;
      }

      private var tonilije:Vector.<String>;

      private var index:int = 0;

      public function push(param1:String) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.tonilije.push(param1);
         return;
      }

      public function vugireced() : String {
         var _loc1_:* = false;
         var _loc2_:* = true;
         if(this.tonilije.length>0)
         {
            this.index=Math.min(this.index+1,this.tonilije.length-1);
            return this.tonilije[this.index];
         }
         return "";
      }

      public function juf() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.index=0;
         return;
      }
   }
[/CLASS]
}