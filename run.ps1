set-variable -name DISPLAY -value 192.168.0.44:2.0
docker run  -it `
            --privileged `
            -v D:/Docker/RaspberryTools/root:/root/ `
            --mount source=QtBuilder,target=/QtBuilder `
            -e DISPLAY=$DISPLAY `
            rasp_build `
            bash -c "cd  && source .bashrc && bash"

            
            
            