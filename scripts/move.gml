///Move(start, destination, pos[])

start = argument0;
dest = argument1;
pos = argument2;

if(start < dest){
    while(self.x > Position(start+1)){
        self.x-=8;
        pos[start+1].x+=8;
    }
    pos[start+1] = pos[start];
    pos[start] = self;
    Move(start+1, dest);
}else if(start > dest){
    while(self.x < Position(start-1)){
        self.x+=8;
        pos[start-1].x-=8;
    }
    pos[start-1] = pos[start];
    pos[start] = self;
    Move(start-1, dest);
}
