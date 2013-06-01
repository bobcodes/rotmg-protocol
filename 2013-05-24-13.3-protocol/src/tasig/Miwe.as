package tasig
{
   import aaa.rotmg.ui.ServersContainer;
   import hotewa.Baqifa;
   import __AS3__.vec.Vector;
   import aaa.rotmg.net.Server;
   import kogyc.Mile;
   import aaa.rotmg.config.UserConfig;


   public class Miwe extends Object implements ServersContainer
   {
      public function Miwe() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         return;
      }

      public var model:Baqifa;

      private const servers:Vector.<Server> = new Vector.<Server>(0);

      public function setServers(param1:Vector.<Server>) : void {
         var _loc2_:Server = null;
         this.servers.length=0;
         for each (_loc2_ in param1)
         {
            this.servers.push(_loc2_);
         }
         return;
      }

      public function getServers() : Vector.<Server> {
         return this.servers;
      }

      public function getBestServer() : Server {
         var _loc6_:Server = null;
         var currentPriority:* = 0;
         var currentDistance:* = NaN;
         var _loc1_:Boolean = this.model.kuzuqi();
         var userLatLong:Mile = this.model.huqub();
         var bestSoFar:Server = null;
         var _loc4_:Number = Number.MAX_VALUE;
         var _loc5_:int = int.MAX_VALUE;
		 
		 // server for the closest server and return that
         for each (_loc6_ in this.servers)
         {
		   // user selected server overrides
		   if(_loc6_.name==UserConfig.data_.preferredServer)
		   {
			  return _loc6_;
		   }
		   currentPriority=_loc6_.priority();
		   currentDistance=Mile.distance(userLatLong,_loc6_.latLong);
		   if(currentPriority<_loc5_||currentPriority==_loc5_&&currentDistance<_loc4_)
		   {
			  bestSoFar=_loc6_;
			  _loc4_=currentDistance;
			  _loc5_=currentPriority;
		   }
         }
         return bestSoFar;
      }

      public function hasServers() : Boolean {
         return this.servers.length>0;
      }
   }

}