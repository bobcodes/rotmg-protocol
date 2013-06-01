package bocak
{
[CLASS273]   import tysenyzy.Command;
   import qypupet.Tuhyfutos;
   import qypupet.Sikyvuvus;
   import qypupet.Vuravipyg;


   public class Mysij extends Command
   {
      public function Mysij() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         return;
      }

      public var pataleg:int;

      public var lycufasoc:Tuhyfutos;

      public var lytydohod:Wuqez;

      public var qidogy:Sikyvuvus;

      override public function execute() : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         if(this.pataleg<0)
         {
            this.lycufasoc.gul();
         }
         else
         {
            this.lycufasoc.wuq(this.lycufasoc.zujadogym(this.pataleg));
         }
         this.qidogy.jaq=this.pataleg<0?null:this.qidogy.jaq=this.lycufasoc.zujadogym(this.pataleg);
         return;
      }
   }
[/CLASS]
}