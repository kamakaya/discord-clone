import { currentProfile } from "@/lib/current-profile";
import { redirectToSignIn } from "@clerk/nextjs";

interface InviteCodePageProps {
    params: {
        inviteCode: string;
    };
};

const InviteCodePage = async ({
    params
}: InviteCodePageProps) => {

    const profile = await currentProfile();

    if (!profile) {
        return redirectToSignIn();
    }

    return ( 
        <div>
            Hello invite
        </div>
    );
}
 
export default InviteCodePage;