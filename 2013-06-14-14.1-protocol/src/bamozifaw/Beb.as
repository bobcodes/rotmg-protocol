package bamozifaw
{


   public class Beb extends Object
   {
      public function Beb() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         return;
      }

      private var lyfuda:Boolean = false;

      private var seconds:int;

      private var minutes:int;

      private var qumyh:int;

      private var days:int;

      private var fimyfojal:Array;

      public function casu(param1:Number) : String {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.seconds=Math.floor(param1/1000);
         this.minutes=Math.floor(this.seconds/60);
         this.qumyh=Math.floor(this.minutes/60);
         this.days=Math.floor(this.qumyh/24);
         this.seconds=this.seconds%60;
         this.minutes=this.minutes%60;
         this.qumyh=this.qumyh%24;
         this.lyfuda=false;
         this.fimyfojal=[];
         this.cur(this.days,"d");
         this.cur(this.qumyh,"h");
         this.cur(this.minutes,"m",2);
         this.cur(this.seconds,"s",2);
         this.lyfuda=false;
         return this.fimyfojal.join(" ");
      }

      private function cur(param1:int, param2:String, param3:int=-1) : void {
         var _loc7_:* = true;
         var _loc8_:* = false;
         if(param1==0&&!this.lyfuda)
         {
            return;
         }
         this.lyfuda=true;
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
         this.fimyfojal.push(_loc4_);
         return;
      }
   }

}