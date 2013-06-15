package fodusy
{
   import poho.Pom;
   import zugevygam.Byty;
   import dovuz.Vagogi;
   import ducojoryn.Zim;
   import firo.Binifyra;


   public class Joqepeqa extends Object
   {
      public function Joqepeqa() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         return;
      }

      public var skin:Pom;

      public var bufaz:Byty;

      public var server:Vagogi;

      public function execute() : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         var _loc1_:Binifyra = this.bufaz.quseb(Zim.RESKIN) as Binifyra;
         _loc1_.skinID=this.skin.id;
         this.server.sendMessage(_loc1_);
         return;
      }
   }

}