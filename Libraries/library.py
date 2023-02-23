from percy import percy_snapshot
from robot.libraries.BuiltIn import BuiltIn


def take_snapshot(snapshot_name, resolutions):
    # My list of resolutions in robot was passed as strings, so just
    resolutions = [int(i) for i in resolutions]
    # get current driver instance for snapshot
    selib = BuiltIn().get_library_instance("SeleniumLibrary")
    driver = selib.driver
    # take snapshot
    percy_snapshot(
        driver=driver,
        name=snapshot_name,
        widths=resolutions
    )
