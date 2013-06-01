package sowojotac
{
[CLASS1800]

   public class Feho extends Object
   {
      public function Feho() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         return;
      }

      private var tasowitu:Boolean = false;

      private var seconds:int;

      private var minutes:int;

      private var doqakobom:int;

      private var days:int;

      private var dop:Array;

      public function lifas(param1:Number) : String {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.seconds=Math.floor(param1/1000);
         this.minutes=Math.floor(this.seconds/60);
         this.doqakobom=Math.floor(this.minutes/60);
         this.days=Math.floor(this.doqakobom/24);
         this.seconds=this.seconds%60;
         this.minutes=this.minutes%60;
         this.doqakobom=this.doqakobom%24;
         this.tasowitu=false;
         this.dop=[];
         this.gucotah(this.days,"d");
         this.gucotah(this.doqakobom,"h");
         this.gucotah(this.minutes,"m",2);
         this.gucotah(this.seconds,"s",2);
         this.tasowitu=false;
         return this.dop.join(" ");
      }

      private function gucotah(param1:int, param2:String, param3:int=-1) : void {
         var _loc7_:* = false;
         var _loc8_:* = true;
         if(param1==0&&!this.tasowitu)
         {
            return;
         }
         this.tasowitu=true;
         var _loc4_:String = param1.toString();
         if(param3==-1)
         {
            param3=_loc4_.length;
         }
         var _loc5_:* = "";
         var _loc6_:int = _loc4_.length;
         while(_loc6_<param3)
         {
            _loc5_=_loc5_+"0";
            _loc6_++;
         }
         _loc4_=_loc5_+_loc4_+param2;
         this.dop.push(_loc4_);
         return;
      }
   }
[/CLASS]
}