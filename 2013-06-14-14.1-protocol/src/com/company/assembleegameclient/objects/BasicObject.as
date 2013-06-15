package com.company.assembleegameclient.objects
{
   import com.company.assembleegameclient.map.Map;
   import com.company.assembleegameclient.map.Square;
   import __AS3__.vec.Vector;
   import flash.display.IGraphicsData;
   import com.company.assembleegameclient.map.Qawosiwi;


   public class BasicObject extends Object
   {
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
      }

      public function BasicObject() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.qyqasum=new Vector.<Number>();
         this.witog=new Vector.<Number>();
         super();
         this.clear();
         return;
      }

      private static var tyrujyhe:int = 0;

      public static function hofuvupud() : int {
         var _loc3_:* = true;
         var _loc4_:* = false;
         return 2130706432|tyrujyhe++;
      }

      public var map_:Map;

      public var mizuky:Square;

      public var objectId_:int;

      public var x_:Number;

      public var y_:Number;

      public var z_:Number;

      public var budav:Boolean;

      public var vuci:Boolean;

      public var qyqasum:Vector.<Number>;

      public var witog:Vector.<Number>;

      public var sortVal_:Number;

      public function clear() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.map_=null;
         this.mizuky=null;
         this.objectId_=-1;
         this.x_=0;
         this.y_=0;
         this.z_=0;
         this.budav=false;
         this.vuci=false;
         this.qyqasum.length=0;
         this.witog.length=0;
         this.sortVal_=0.0;
         return;
      }

      public function dispose() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.map_=null;
         this.mizuky=null;
         this.qyqasum=null;
         this.witog=null;
         return;
      }

      public function update(param1:int, param2:int) : Boolean {
         return true;
      }

      public function draw(param1:Vector.<IGraphicsData>, param2:Qawosiwi, param3:int) : void {
         return;
      }

      public function drawShadow(param1:Vector.<IGraphicsData>, param2:Qawosiwi, param3:int) : void {
         return;
      }

      public function rinevil(param1:Qawosiwi) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.qyqasum.length=0;
         this.qyqasum.push(this.x_,this.y_,0,this.x_,this.y_,this.z_);
         this.witog.length=0;
         param1.wToS_.transformVectors(this.qyqasum,this.witog);
         this.sortVal_=this.witog[1];
         return;
      }

      public function addTo(param1:Map, param2:Number, param3:Number) : Boolean {
         var _loc4_:* = true;
         var _loc5_:* = false;
         this.map_=param1;
         this.mizuky=this.map_.getSquare(param2,param3);
         if(this.mizuky==null)
         {
            this.map_=null;
            return false;
         }
         this.x_=param2;
         this.y_=param3;
         return true;
      }

      public function removeFromMap() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.map_=null;
         this.mizuky=null;
         return;
      }
   }

}