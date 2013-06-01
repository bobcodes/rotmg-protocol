package sygumagu
{


   public class Zifas extends Object
   {
      public function Zifas() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         return;
      }

      private var wohonypu:Boolean = false;

      private var seconds:int;

      private var minutes:int;

      private var pizen:int;

      private var days:int;

      private var zinif:Array;

      public function tagyrod(param1:Number) : String {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.seconds=Math.floor(param1/1000);
         this.minutes=Math.floor(this.seconds/60);
         this.pizen=Math.floor(this.minutes/60);
         this.days=Math.floor(this.pizen/24);
         this.seconds=this.seconds%60;
         this.minutes=this.minutes%60;
         this.pizen=this.pizen%24;
         this.wohonypu=false;
         this.zinif=[];
         this.zuby(this.days,"d");
         this.zuby(this.pizen,"h");
         this.zuby(this.minutes,"m",2);
         this.zuby(this.seconds,"s",2);
         this.wohonypu=false;
         return this.zinif.join(" ");
      }

      private function zuby(param1:int, param2:String, param3:int=-1) : void {
         var _loc7_:* = false;
         var _loc8_:* = true;
         if(param1==0&&!this.wohonypu)
         {
            return;
         }
         this.wohonypu=true;
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
         this.zinif.push(_loc4_);
         return;
      }
   }

}