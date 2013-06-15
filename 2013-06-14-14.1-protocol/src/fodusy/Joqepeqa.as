package fodusy
{
   import poho.Pom;
   import zugevygam.Byty;
   import aaa.NetworkHandler;
   import aaa.ActionMapperAbstract;
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

      public var server:NetworkHandler;

      public function execute() : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         var _loc1_:Binifyra = this.bufaz.quseb(ActionMapperAbstract.RESKIN) as Binifyra;
         _loc1_.skinID=this.skin.id;
         this.server.sendMessage(_loc1_);
         return;
      }
   }

}