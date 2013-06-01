package zeky
{
[CLASS94]   import tehakab.Supuvygac;
   import tehakab.Cusifyha;
   import tehakab.Copaqufiv;
   import tehakab.Dur;


   public class Hirame extends Object
   {
      public function Hirame() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         return;
      }

      public var classes:Supuvygac;

      public function execute() : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc1_:int = this.classes.volykatij();
         var _loc2_:* = 0;
         while(_loc2_<_loc1_)
         {
            this.nezemy(this.classes.lylewe(_loc2_));
            _loc2_++;
         }
         return;
      }

      private function nezemy(param1:Cusifyha) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         param1.ryb(param1.id==Supuvygac.coz);
         this.dediji(param1);
         return;
      }

      private function dediji(param1:Cusifyha) : void {
         var _loc6_:* = false;
         var _loc7_:* = true;
         var _loc5_:Copaqufiv = null;
         var _loc2_:Copaqufiv = param1.pikyremo.hasemuma();
         var _loc3_:int = param1.pikyremo.volykatij();
         var _loc4_:* = 0;
         while(_loc4_<_loc3_)
         {
            _loc5_=param1.pikyremo.ligopud(_loc4_);
            if(_loc5_!=_loc2_)
            {
               this.cuzebevil(param1.pikyremo.ligopud(_loc4_));
            }
            _loc4_++;
         }
         return;
      }

      private function cuzebevil(param1:Copaqufiv) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         param1.setState(Dur.LOCKED);
         return;
      }
   }
[/CLASS]
}